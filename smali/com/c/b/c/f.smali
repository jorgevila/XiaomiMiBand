.class public final Lcom/c/b/c/f;
.super Lcom/c/b/c/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/c/b/c/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/b/c/b;IIFFFFFFFFFFFFFFFF)Lcom/c/b/c/b;
    .locals 1

    invoke-static/range {p4 .. p19}, Lcom/c/b/c/k;->a(FFFFFFFFFFFFFFFF)Lcom/c/b/c/k;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/c/b/c/f;->a(Lcom/c/b/c/b;IILcom/c/b/c/k;)Lcom/c/b/c/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/c/b/c/b;IILcom/c/b/c/k;)Lcom/c/b/c/b;
    .locals 9

    const/high16 v8, 0x3f000000

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    invoke-static {}, Lcom/c/b/n;->a()Lcom/c/b/n;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v3, Lcom/c/b/c/b;

    invoke-direct {v3, p2, p3}, Lcom/c/b/c/b;-><init>(II)V

    mul-int/lit8 v0, p2, 0x2

    new-array v4, v0, [F

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_5

    array-length v5, v4

    int-to-float v0, v2

    add-float v6, v0, v8

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v8

    aput v7, v4, v0

    add-int/lit8 v7, v0, 0x1

    aput v6, v4, v7

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p4, v4}, Lcom/c/b/c/k;->a([F)V

    invoke-static {p1, v4}, Lcom/c/b/c/f;->a(Lcom/c/b/c/b;[F)V

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_4

    :try_start_0
    aget v6, v4, v0

    float-to-int v6, v6

    add-int/lit8 v7, v0, 0x1

    aget v7, v4, v7

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Lcom/c/b/c/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_3

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {v3, v6, v2}, Lcom/c/b/c/b;->b(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/c/b/n;->a()Lcom/c/b/n;

    move-result-object v0

    throw v0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    return-object v3
.end method

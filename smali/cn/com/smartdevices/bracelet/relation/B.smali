.class Lcn/com/smartdevices/bracelet/relation/B;
.super Lcom/d/a/a/h;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/com/smartdevices/bracelet/relation/w;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/relation/w;J)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/relation/B;->b:Lcn/com/smartdevices/bracelet/relation/w;

    iput-wide p2, p0, Lcn/com/smartdevices/bracelet/relation/B;->a:J

    invoke-direct {p0}, Lcom/d/a/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lcn/com/smartdevices/bracelet/relation/b/c;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/relation/b/c;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/com/smartdevices/bracelet/relation/b/c;->a:Z

    iget-wide v1, p0, Lcn/com/smartdevices/bracelet/relation/B;->a:J

    iput-wide v1, v0, Lcn/com/smartdevices/bracelet/relation/b/c;->b:J

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/relation/B;->b:Lcn/com/smartdevices/bracelet/relation/w;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/relation/w;->b(Lcn/com/smartdevices/bracelet/relation/w;)Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcn/com/smartdevices/bracelet/relation/b/c;

    invoke-direct {v3}, Lcn/com/smartdevices/bracelet/relation/b/c;-><init>()V

    iget-wide v4, p0, Lcn/com/smartdevices/bracelet/relation/B;->a:J

    iput-wide v4, v3, Lcn/com/smartdevices/bracelet/relation/b/c;->b:J

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/relation/B;->b:Lcn/com/smartdevices/bracelet/relation/w;

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/relation/w;->d(Lcn/com/smartdevices/bracelet/relation/w;)Lcn/com/smartdevices/bracelet/relation/db/g;

    move-result-object v4

    iget-wide v5, p0, Lcn/com/smartdevices/bracelet/relation/B;->a:J

    invoke-virtual {v4, v5, v6}, Lcn/com/smartdevices/bracelet/relation/db/g;->a(J)Lcn/com/smartdevices/bracelet/relation/db/f;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    iput v5, v4, Lcn/com/smartdevices/bracelet/relation/db/f;->u:I

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/relation/B;->b:Lcn/com/smartdevices/bracelet/relation/w;

    invoke-static {v5}, Lcn/com/smartdevices/bracelet/relation/w;->d(Lcn/com/smartdevices/bracelet/relation/w;)Lcn/com/smartdevices/bracelet/relation/db/g;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/com/smartdevices/bracelet/relation/db/g;->a(Lcn/com/smartdevices/bracelet/relation/db/f;)Z

    :cond_0
    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, v3, Lcn/com/smartdevices/bracelet/relation/b/c;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/relation/B;->b:Lcn/com/smartdevices/bracelet/relation/w;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/relation/w;->b(Lcn/com/smartdevices/bracelet/relation/w;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v1, v3, Lcn/com/smartdevices/bracelet/relation/b/c;->a:Z

    goto :goto_1
.end method

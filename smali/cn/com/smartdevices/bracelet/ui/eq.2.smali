.class Lcn/com/smartdevices/bracelet/ui/eq;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/smartdevices/bracelet/weight/family/v;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/eq;->a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/eq;->a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->e(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;Z)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/eq;->a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/eq;->a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/eq;->a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

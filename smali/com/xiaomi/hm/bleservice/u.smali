.class public final Lcom/xiaomi/hm/bleservice/u;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/hm/bleservice/B;


# instance fields
.field private final a:Lcom/xiaomi/hm/bleservice/BLEService;


# direct methods
.method constructor <init>(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/hm/bleservice/HwConnStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getConnStatus()Lcom/xiaomi/hm/bleservice/HwConnStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->doConnect(Landroid/bluetooth/BluetoothDevice;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->connectDevice()V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/hm/bleservice/profile/ISyncDataCb;J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/hm/bleservice/BLEService;->syncWeightData(Lcom/xiaomi/hm/bleservice/profile/ISyncDataCb;J)V

    return-void
.end method

.method public b()Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSyncDataStatus()Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->connectWeight(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->checkSyncData()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->startSyncData()V

    return-void
.end method

.method public e()Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getMiliProfile()Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/xiaomi/hm/bleservice/HwConnStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getLastConnStatus()Lcom/xiaomi/hm/bleservice/HwConnStatus;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->isBluetoothRestarting()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/xiaomi/hm/bleservice/profile/WeightProfile;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getWeigthProfile()Lcom/xiaomi/hm/bleservice/profile/WeightProfile;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->disconnectWeight()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->disconnectMili()V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/u;->a:Lcom/xiaomi/hm/bleservice/BLEService;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    return-void
.end method

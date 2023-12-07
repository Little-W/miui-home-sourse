.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$PtxgUbIQfTnZ87Rkt5NzH2vwp18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;

.field private final synthetic f$1:Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$PtxgUbIQfTnZ87Rkt5NzH2vwp18;->f$0:Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$PtxgUbIQfTnZ87Rkt5NzH2vwp18;->f$1:Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$PtxgUbIQfTnZ87Rkt5NzH2vwp18;->f$0:Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$PtxgUbIQfTnZ87Rkt5NzH2vwp18;->f$1:Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    invoke-virtual {v0, p0}, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->lambda$onDeviceOnline$0$DeviceCallbackInner(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    return-void
.end method

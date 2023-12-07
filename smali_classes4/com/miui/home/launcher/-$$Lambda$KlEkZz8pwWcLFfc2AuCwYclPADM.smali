.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$KlEkZz8pwWcLFfc2AuCwYclPADM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$KlEkZz8pwWcLFfc2AuCwYclPADM;->f$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$KlEkZz8pwWcLFfc2AuCwYclPADM;->f$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V

    return-void
.end method

.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$W_ip1t4KFQ4HKdBcD50Hpx9VDI0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$W_ip1t4KFQ4HKdBcD50Hpx9VDI0;->f$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$W_ip1t4KFQ4HKdBcD50Hpx9VDI0;->f$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V

    return-void
.end method

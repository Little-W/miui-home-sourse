.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Uh0DeR3NlrzpyPOOKIidoX9ZeGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Uh0DeR3NlrzpyPOOKIidoX9ZeGU;->f$0:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Uh0DeR3NlrzpyPOOKIidoX9ZeGU;->f$0:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    check-cast p1, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->lambda$requestCloudSettingsInfo$1$CNCloudSettingsController(Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;)V

    return-void
.end method

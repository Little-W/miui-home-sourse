.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$w8M93INxl-L5Jw8gGvxHWZN-Q7g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$w8M93INxl-L5Jw8gGvxHWZN-Q7g;->f$0:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$w8M93INxl-L5Jw8gGvxHWZN-Q7g;->f$0:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->lambda$requestCloudSettingsInfo$1(Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;)V

    return-void
.end method

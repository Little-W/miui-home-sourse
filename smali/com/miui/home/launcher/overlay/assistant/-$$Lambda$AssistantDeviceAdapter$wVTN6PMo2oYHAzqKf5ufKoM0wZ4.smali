.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDeviceAdapter$wVTN6PMo2oYHAzqKf5ufKoM0wZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDeviceAdapter$wVTN6PMo2oYHAzqKf5ufKoM0wZ4;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDeviceAdapter$wVTN6PMo2oYHAzqKf5ufKoM0wZ4;->f$0:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->lambda$onConfigurationChanged$0(Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

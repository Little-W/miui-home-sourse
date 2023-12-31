.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;->f$0:I

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;->f$3:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;->f$0:I

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$q8Ixl1TWbjZOH_Pd-vhiX7MuVfU;->f$3:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->lambda$upgradeMaMl$5(ILjava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method

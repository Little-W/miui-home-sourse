.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$yOTWWACrP53LPBp1Wo-kP9IrbZI;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->lambda$upgradeMaMl$0(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

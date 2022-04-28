.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$dTGBGd9rcFC7QDErw1k_tCBLaw0;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->lambda$upgradeMaMl$3(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

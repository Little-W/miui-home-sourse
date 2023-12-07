.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ftKPbQ7bD6X_GmUlD-O4hS1ChNA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ftKPbQ7bD6X_GmUlD-O4hS1ChNA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ftKPbQ7bD6X_GmUlD-O4hS1ChNA;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ftKPbQ7bD6X_GmUlD-O4hS1ChNA;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ftKPbQ7bD6X_GmUlD-O4hS1ChNA;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ftKPbQ7bD6X_GmUlD-O4hS1ChNA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    check-cast p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->lambda$getLauncherMaMls$6(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)I

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$DJXnk_sNohae8rD-w5cBof0YJH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$DJXnk_sNohae8rD-w5cBof0YJH0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$DJXnk_sNohae8rD-w5cBof0YJH0;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$DJXnk_sNohae8rD-w5cBof0YJH0;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$DJXnk_sNohae8rD-w5cBof0YJH0;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$DJXnk_sNohae8rD-w5cBof0YJH0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->lambda$getLauncherMaMls$7(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

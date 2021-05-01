.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Mvm2PZ1CsibtAxBXbfOHtotusyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Mvm2PZ1CsibtAxBXbfOHtotusyU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Mvm2PZ1CsibtAxBXbfOHtotusyU;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Mvm2PZ1CsibtAxBXbfOHtotusyU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Mvm2PZ1CsibtAxBXbfOHtotusyU;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Mvm2PZ1CsibtAxBXbfOHtotusyU;

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

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->lambda$requestCloudSettingsInfo$421(Ljava/lang/Void;)Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object p1

    return-object p1
.end method

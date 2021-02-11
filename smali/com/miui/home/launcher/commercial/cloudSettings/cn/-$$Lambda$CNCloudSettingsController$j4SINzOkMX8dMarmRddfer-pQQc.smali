.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$j4SINzOkMX8dMarmRddfer-pQQc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$j4SINzOkMX8dMarmRddfer-pQQc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$j4SINzOkMX8dMarmRddfer-pQQc;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$j4SINzOkMX8dMarmRddfer-pQQc;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$j4SINzOkMX8dMarmRddfer-pQQc;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$j4SINzOkMX8dMarmRddfer-pQQc;

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

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->lambda$requestCloudSettingsInfo$0(Ljava/lang/Void;)Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$u42SKUVIS8Bwm19v2XEdpQEq_jM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$u42SKUVIS8Bwm19v2XEdpQEq_jM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$u42SKUVIS8Bwm19v2XEdpQEq_jM;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$u42SKUVIS8Bwm19v2XEdpQEq_jM;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$u42SKUVIS8Bwm19v2XEdpQEq_jM;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$u42SKUVIS8Bwm19v2XEdpQEq_jM;

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

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->lambda$requestCloudSettingsInfo$416(Ljava/lang/Void;)Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;

    move-result-object p1

    return-object p1
.end method

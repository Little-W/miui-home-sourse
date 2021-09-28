.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$3Jz2FEwx_kNtizwLwrPZrQo11V4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$3Jz2FEwx_kNtizwLwrPZrQo11V4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$3Jz2FEwx_kNtizwLwrPZrQo11V4;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$3Jz2FEwx_kNtizwLwrPZrQo11V4;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$3Jz2FEwx_kNtizwLwrPZrQo11V4;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$3Jz2FEwx_kNtizwLwrPZrQo11V4;

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

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->lambda$requestCloudSettingsInfo$0(Ljava/lang/Void;)Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object p1

    return-object p1
.end method

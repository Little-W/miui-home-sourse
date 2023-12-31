.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$MeEaghk2acngCaox3Ma8ZoNVrS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$MeEaghk2acngCaox3Ma8ZoNVrS0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$MeEaghk2acngCaox3Ma8ZoNVrS0;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$MeEaghk2acngCaox3Ma8ZoNVrS0;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$MeEaghk2acngCaox3Ma8ZoNVrS0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$MeEaghk2acngCaox3Ma8ZoNVrS0;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

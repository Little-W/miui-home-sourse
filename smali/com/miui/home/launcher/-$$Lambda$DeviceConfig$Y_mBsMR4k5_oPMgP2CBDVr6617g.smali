.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;

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

    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$5(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

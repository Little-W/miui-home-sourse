.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7RsF4kJee0gxVNmCpaw0Lpit3zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7RsF4kJee0gxVNmCpaw0Lpit3zs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7RsF4kJee0gxVNmCpaw0Lpit3zs;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7RsF4kJee0gxVNmCpaw0Lpit3zs;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7RsF4kJee0gxVNmCpaw0Lpit3zs;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7RsF4kJee0gxVNmCpaw0Lpit3zs;

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

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$null$4(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

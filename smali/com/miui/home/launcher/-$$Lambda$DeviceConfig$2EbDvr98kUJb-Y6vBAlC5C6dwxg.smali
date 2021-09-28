.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;

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

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

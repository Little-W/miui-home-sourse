.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$FPO5v0xnmDSS4sJtbHmz6xfM9mc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$FPO5v0xnmDSS4sJtbHmz6xfM9mc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$FPO5v0xnmDSS4sJtbHmz6xfM9mc;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$FPO5v0xnmDSS4sJtbHmz6xfM9mc;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$FPO5v0xnmDSS4sJtbHmz6xfM9mc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$FPO5v0xnmDSS4sJtbHmz6xfM9mc;

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

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$null$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7oOt7FbIK70VE1KnZ8KLCiBjYDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7oOt7FbIK70VE1KnZ8KLCiBjYDI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7oOt7FbIK70VE1KnZ8KLCiBjYDI;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7oOt7FbIK70VE1KnZ8KLCiBjYDI;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7oOt7FbIK70VE1KnZ8KLCiBjYDI;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7oOt7FbIK70VE1KnZ8KLCiBjYDI;

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

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$null$331(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

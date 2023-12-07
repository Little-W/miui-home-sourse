.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsNetworkConnectedAsync$8()V

    return-void
.end method

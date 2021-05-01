.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$uxmuEuRhqC0n-nxTc4exuUFXRHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$uxmuEuRhqC0n-nxTc4exuUFXRHQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$uxmuEuRhqC0n-nxTc4exuUFXRHQ;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$uxmuEuRhqC0n-nxTc4exuUFXRHQ;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$uxmuEuRhqC0n-nxTc4exuUFXRHQ;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$uxmuEuRhqC0n-nxTc4exuUFXRHQ;

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

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsNetworkConnectedAsync$337()V

    return-void
.end method

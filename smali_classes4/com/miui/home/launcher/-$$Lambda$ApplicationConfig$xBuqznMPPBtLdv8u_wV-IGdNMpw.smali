.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationConfig$xBuqznMPPBtLdv8u_wV-IGdNMpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$ApplicationConfig$xBuqznMPPBtLdv8u_wV-IGdNMpw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ApplicationConfig$xBuqznMPPBtLdv8u_wV-IGdNMpw;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$ApplicationConfig$xBuqznMPPBtLdv8u_wV-IGdNMpw;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$ApplicationConfig$xBuqznMPPBtLdv8u_wV-IGdNMpw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$ApplicationConfig$xBuqznMPPBtLdv8u_wV-IGdNMpw;

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

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->lambda$checkAndUpdateMirror$1()V

    return-void
.end method

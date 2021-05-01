.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$BCbTLDvGGr63tpjZMFp3Pd3jg8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$BCbTLDvGGr63tpjZMFp3Pd3jg8w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$BCbTLDvGGr63tpjZMFp3Pd3jg8w;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$BCbTLDvGGr63tpjZMFp3Pd3jg8w;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$BCbTLDvGGr63tpjZMFp3Pd3jg8w;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$BCbTLDvGGr63tpjZMFp3Pd3jg8w;

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

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsTetheringSupported$338()V

    return-void
.end method

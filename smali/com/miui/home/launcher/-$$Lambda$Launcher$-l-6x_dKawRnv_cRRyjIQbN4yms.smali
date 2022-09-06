.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$-l-6x_dKawRnv_cRRyjIQbN4yms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$-l-6x_dKawRnv_cRRyjIQbN4yms;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$-l-6x_dKawRnv_cRRyjIQbN4yms;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$-l-6x_dKawRnv_cRRyjIQbN4yms;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$-l-6x_dKawRnv_cRRyjIQbN4yms;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$-l-6x_dKawRnv_cRRyjIQbN4yms;

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

    invoke-static {}, Lcom/miui/home/launcher/Launcher;->lambda$reloadSearchBarIfNeed$22()V

    return-void
.end method

.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$k1pMNlmPXZGC8bVFaJBZ98K4pc8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$k1pMNlmPXZGC8bVFaJBZ98K4pc8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$k1pMNlmPXZGC8bVFaJBZ98K4pc8;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$k1pMNlmPXZGC8bVFaJBZ98K4pc8;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$k1pMNlmPXZGC8bVFaJBZ98K4pc8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$k1pMNlmPXZGC8bVFaJBZ98K4pc8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/AbstractFloatingView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AbstractFloatingView;->onScreenSizeChange()V

    return-void
.end method

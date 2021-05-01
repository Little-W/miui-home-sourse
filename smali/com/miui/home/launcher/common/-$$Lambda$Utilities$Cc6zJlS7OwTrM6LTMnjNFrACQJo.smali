.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Cc6zJlS7OwTrM6LTMnjNFrACQJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Cc6zJlS7OwTrM6LTMnjNFrACQJo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Cc6zJlS7OwTrM6LTMnjNFrACQJo;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Cc6zJlS7OwTrM6LTMnjNFrACQJo;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Cc6zJlS7OwTrM6LTMnjNFrACQJo;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$Utilities$Cc6zJlS7OwTrM6LTMnjNFrACQJo;

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

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->lambda$updatemIncompatibleAppList$147(Ljava/util/List;)V

    return-void
.end method

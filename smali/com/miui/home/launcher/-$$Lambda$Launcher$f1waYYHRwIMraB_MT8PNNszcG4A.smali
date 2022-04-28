.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$f1waYYHRwIMraB_MT8PNNszcG4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$f1waYYHRwIMraB_MT8PNNszcG4A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$f1waYYHRwIMraB_MT8PNNszcG4A;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$f1waYYHRwIMraB_MT8PNNszcG4A;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$f1waYYHRwIMraB_MT8PNNszcG4A;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$f1waYYHRwIMraB_MT8PNNszcG4A;

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

    check-cast p1, Ljava/lang/InterruptedException;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->lambda$checkAllUserDeepShortcuts$41(Ljava/lang/InterruptedException;)V

    return-void
.end method

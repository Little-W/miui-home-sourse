.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;

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

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->lambda$onCreate$3(Ljava/lang/InterruptedException;)V

    return-void
.end method

.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$w5ogVcvvYAW7iKCP44R5mkbg6Uw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$w5ogVcvvYAW7iKCP44R5mkbg6Uw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$w5ogVcvvYAW7iKCP44R5mkbg6Uw;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$w5ogVcvvYAW7iKCP44R5mkbg6Uw;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$w5ogVcvvYAW7iKCP44R5mkbg6Uw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$w5ogVcvvYAW7iKCP44R5mkbg6Uw;

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

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->lambda$checkAllUserDeepShortcuts$32(Ljava/lang/InterruptedException;)V

    return-void
.end method

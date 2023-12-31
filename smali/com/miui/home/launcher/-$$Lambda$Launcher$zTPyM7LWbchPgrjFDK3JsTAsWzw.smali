.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$zTPyM7LWbchPgrjFDK3JsTAsWzw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$zTPyM7LWbchPgrjFDK3JsTAsWzw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$zTPyM7LWbchPgrjFDK3JsTAsWzw;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$zTPyM7LWbchPgrjFDK3JsTAsWzw;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$zTPyM7LWbchPgrjFDK3JsTAsWzw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$zTPyM7LWbchPgrjFDK3JsTAsWzw;

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

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->lambda$resetScreenContent$16(Landroid/view/ViewGroup;)V

    return-void
.end method

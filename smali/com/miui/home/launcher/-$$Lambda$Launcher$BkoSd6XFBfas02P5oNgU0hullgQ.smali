.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$BkoSd6XFBfas02P5oNgU0hullgQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$BkoSd6XFBfas02P5oNgU0hullgQ;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$BkoSd6XFBfas02P5oNgU0hullgQ;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$updateIconWhenInstallForSomeContainer$73$Launcher(Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

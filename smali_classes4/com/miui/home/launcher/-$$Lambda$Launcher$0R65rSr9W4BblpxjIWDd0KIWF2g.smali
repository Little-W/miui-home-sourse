.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$0R65rSr9W4BblpxjIWDd0KIWF2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$0R65rSr9W4BblpxjIWDd0KIWF2g;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$0R65rSr9W4BblpxjIWDd0KIWF2g;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$0R65rSr9W4BblpxjIWDd0KIWF2g;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$0R65rSr9W4BblpxjIWDd0KIWF2g;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$addNewInstallIndicator$39$Launcher(Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

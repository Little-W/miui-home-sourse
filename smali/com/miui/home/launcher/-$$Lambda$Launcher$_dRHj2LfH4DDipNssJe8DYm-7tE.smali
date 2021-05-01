.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$_dRHj2LfH4DDipNssJe8DYm-7tE;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_dRHj2LfH4DDipNssJe8DYm-7tE;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_dRHj2LfH4DDipNssJe8DYm-7tE;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_dRHj2LfH4DDipNssJe8DYm-7tE;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_dRHj2LfH4DDipNssJe8DYm-7tE;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/Launcher;->lambda$null$51(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    return p1
.end method

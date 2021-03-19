.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$29$QhigFsuGNLnBeOgl7IltII3Oywo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$29;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$29;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$29$QhigFsuGNLnBeOgl7IltII3Oywo;->f$0:Lcom/miui/home/launcher/Launcher$29;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$29$QhigFsuGNLnBeOgl7IltII3Oywo;->f$0:Lcom/miui/home/launcher/Launcher$29;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher$29;->lambda$onChange$1(Lcom/miui/home/launcher/Launcher$29;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

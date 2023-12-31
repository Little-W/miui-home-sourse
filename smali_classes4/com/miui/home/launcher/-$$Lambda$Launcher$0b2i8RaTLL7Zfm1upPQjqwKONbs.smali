.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$0b2i8RaTLL7Zfm1upPQjqwKONbs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$0b2i8RaTLL7Zfm1upPQjqwKONbs;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$0b2i8RaTLL7Zfm1upPQjqwKONbs;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$0b2i8RaTLL7Zfm1upPQjqwKONbs;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$0b2i8RaTLL7Zfm1upPQjqwKONbs;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->lambda$removeFromAppsList$64$Launcher(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

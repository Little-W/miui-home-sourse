.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$XygD4YMvYKHqW11rt-qePPfBZrE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$XygD4YMvYKHqW11rt-qePPfBZrE;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$XygD4YMvYKHqW11rt-qePPfBZrE;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$XygD4YMvYKHqW11rt-qePPfBZrE;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$XygD4YMvYKHqW11rt-qePPfBZrE;->f$1:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->lambda$addNewInstallIndicator$38$Launcher(Ljava/util/HashSet;)V

    return-void
.end method

.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/lang/Integer;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$1:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZgdqWQ5fAPkK5TNU3ObyZ-wisvg;->f$4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/miui/home/launcher/Launcher;->lambda$getLoadedDeepShortcutList$58$Launcher(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

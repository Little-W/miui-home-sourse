.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Uninstall$WFTSW9YpFUbRzYmmrV5T7fL7QY0;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Uninstall$WFTSW9YpFUbRzYmmrV5T7fL7QY0;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTargetMode$Uninstall$WFTSW9YpFUbRzYmmrV5T7fL7QY0;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;->lambda$onClick$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    return p1
.end method

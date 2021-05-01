.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FolderInfo$uZbqKdSYif5qRh4JYJLKp3VQ1mQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$uZbqKdSYif5qRh4JYJLKp3VQ1mQ;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$uZbqKdSYif5qRh4JYJLKp3VQ1mQ;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$uZbqKdSYif5qRh4JYJLKp3VQ1mQ;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$uZbqKdSYif5qRh4JYJLKp3VQ1mQ;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->lambda$preLoadContentView$135(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

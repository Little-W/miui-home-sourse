.class Lcom/miui/home/launcher/LauncherIconImageView$1;
.super Ljava/lang/Object;
.source "LauncherIconImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherIconImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherIconImageView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherIconImageView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView$1;->this$0:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView$1;->this$0:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->access$000(Lcom/miui/home/launcher/LauncherIconImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->access$101(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

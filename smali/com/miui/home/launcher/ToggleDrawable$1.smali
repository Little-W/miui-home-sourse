.class Lcom/miui/home/launcher/ToggleDrawable$1;
.super Ljava/lang/Object;
.source "ToggleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ToggleDrawable;->refreshForeground(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ToggleDrawable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ToggleDrawable;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/ToggleDrawable$1;->this$0:Lcom/miui/home/launcher/ToggleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/ToggleDrawable$1;->this$0:Lcom/miui/home/launcher/ToggleDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ToggleDrawable;->invalidateSelf()V

    return-void
.end method

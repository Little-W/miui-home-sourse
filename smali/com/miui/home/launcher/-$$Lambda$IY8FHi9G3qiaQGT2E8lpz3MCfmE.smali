.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$IY8FHi9G3qiaQGT2E8lpz3MCfmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$IY8FHi9G3qiaQGT2E8lpz3MCfmE;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$IY8FHi9G3qiaQGT2E8lpz3MCfmE;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

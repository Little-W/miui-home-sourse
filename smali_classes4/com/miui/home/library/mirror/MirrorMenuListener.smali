.class public abstract Lcom/miui/home/library/mirror/MirrorMenuListener;
.super Ljava/lang/Object;
.source "MirrorMenuListener.java"

# interfaces
.implements Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMirrorMenuShow(Landroid/view/View;Z)V
    .locals 0

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

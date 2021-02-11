.class public Lcom/miui/home/recents/messages/ApplyWindowInsetsEvent;
.super Ljava/lang/Object;
.source "ApplyWindowInsetsEvent.java"


# instance fields
.field public mInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/home/recents/messages/ApplyWindowInsetsEvent;->mInsets:Landroid/graphics/Rect;

    return-void
.end method

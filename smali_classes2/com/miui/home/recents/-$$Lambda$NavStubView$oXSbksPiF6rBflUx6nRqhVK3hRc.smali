.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$oXSbksPiF6rBflUx6nRqhVK3hRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Landroid/graphics/RectF;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$oXSbksPiF6rBflUx6nRqhVK3hRc;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$oXSbksPiF6rBflUx6nRqhVK3hRc;->f$1:Landroid/graphics/RectF;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$oXSbksPiF6rBflUx6nRqhVK3hRc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$oXSbksPiF6rBflUx6nRqhVK3hRc;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$oXSbksPiF6rBflUx6nRqhVK3hRc;->f$1:Landroid/graphics/RectF;

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$oXSbksPiF6rBflUx6nRqhVK3hRc;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToApp$49$NavStubView(Landroid/graphics/RectF;I)V

    return-void
.end method

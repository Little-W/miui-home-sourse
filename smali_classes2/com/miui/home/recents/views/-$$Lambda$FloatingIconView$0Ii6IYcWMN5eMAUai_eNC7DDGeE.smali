.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$0Ii6IYcWMN5eMAUai_eNC7DDGeE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/FloatingIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$0Ii6IYcWMN5eMAUai_eNC7DDGeE;->f$0:Lcom/miui/home/recents/views/FloatingIconView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$0Ii6IYcWMN5eMAUai_eNC7DDGeE;->f$0:Lcom/miui/home/recents/views/FloatingIconView;

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->lambda$recycle$5$FloatingIconView(Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

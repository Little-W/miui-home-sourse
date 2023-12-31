.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$LJQdw44MbvrmJm6ooDlSL-Mr6y0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$LJQdw44MbvrmJm6ooDlSL-Mr6y0;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$LJQdw44MbvrmJm6ooDlSL-Mr6y0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$LJQdw44MbvrmJm6ooDlSL-Mr6y0;->f$0:Lcom/miui/home/recents/NavStubView;

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$LJQdw44MbvrmJm6ooDlSL-Mr6y0;->f$1:F

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/NavStubView;->lambda$updateTaskViewTransY$45$NavStubView(F)V

    return-void
.end method

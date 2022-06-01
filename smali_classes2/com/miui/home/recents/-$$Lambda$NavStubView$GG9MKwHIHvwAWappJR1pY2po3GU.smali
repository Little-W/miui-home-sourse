.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-boolean v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;->f$1:Z

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->lambda$startRecentsStateRecentsAnim$49(Lcom/miui/home/recents/NavStubView;Z)V

    return-void
.end method

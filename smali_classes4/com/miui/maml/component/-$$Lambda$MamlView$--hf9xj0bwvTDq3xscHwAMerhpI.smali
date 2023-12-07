.class public final synthetic Lcom/miui/maml/component/-$$Lambda$MamlView$--hf9xj0bwvTDq3xscHwAMerhpI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/maml/component/MamlView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/component/MamlView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$--hf9xj0bwvTDq3xscHwAMerhpI;->f$0:Lcom/miui/maml/component/MamlView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/component/-$$Lambda$MamlView$--hf9xj0bwvTDq3xscHwAMerhpI;->f$0:Lcom/miui/maml/component/MamlView;

    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->lambda$ensureViewSize$1$MamlView()V

    return-void
.end method

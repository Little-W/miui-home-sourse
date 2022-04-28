.class public Lio/branch/search/d4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/d4;->a(Lio/branch/search/c4;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/c4;


# direct methods
.method public constructor <init>(Lio/branch/search/d4;Lio/branch/search/c4;)V
    .locals 0

    iput-object p2, p0, Lio/branch/search/d4$a;->a:Lio/branch/search/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/branch/search/d4$a;->a:Lio/branch/search/c4;

    invoke-interface {v0}, Lio/branch/search/c4;->a()Z

    return-void
.end method

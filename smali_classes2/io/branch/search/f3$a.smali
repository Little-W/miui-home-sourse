.class public Lio/branch/search/f3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f3;->a(Landroid/content/Context;Lio/branch/search/r1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/f3;


# direct methods
.method public constructor <init>(Lio/branch/search/f3;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/f3$a;->a:Lio/branch/search/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/branch/search/f3$a;->a:Lio/branch/search/f3;

    invoke-virtual {v0}, Lio/branch/search/f3;->c()V

    return-void
.end method

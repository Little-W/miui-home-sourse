.class public Lcom/xiaomi/onetrack/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/a/b/a;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/onetrack/a/c/a;->a:I

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/xiaomi/onetrack/a/c/a;->c:Z

    return-void
.end method

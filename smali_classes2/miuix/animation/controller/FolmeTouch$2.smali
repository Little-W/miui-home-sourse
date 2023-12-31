.class Lmiuix/animation/controller/FolmeTouch$2;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeTouch;->bindViewOfListItem(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeTouch;

.field final synthetic val$config:[Lmiuix/animation/base/AnimConfig;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch$2;->this$0:Lmiuix/animation/controller/FolmeTouch;

    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$config:[Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$2;->this$0:Lmiuix/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$view:Landroid/view/View;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$config:[Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lmiuix/animation/controller/FolmeTouch;->access$000(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    return-void
.end method

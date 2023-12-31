.class public Lmiui/view/SurfaceControlExpose;
.super Ljava/lang/Object;
.source "SurfaceControlExpose.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/SurfaceControlExpose$Builder;,
        Lmiui/view/SurfaceControlExpose$TransactionExpose;
    }
.end annotation


# static fields
.field public static final CLASS:Lcom/miui/expose/utils/ClassHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.view.SurfaceControl"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/view/SurfaceControlExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    return-void
.end method

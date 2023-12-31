.class public Lcom/miui/home/launcher/net/CommonResponseBean;
.super Ljava/lang/Object;
.source "CommonResponseBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/net/CommonResponseBean$Header;
    }
.end annotation


# instance fields
.field public data:Ljava/lang/String;
    .annotation runtime Lcom/mi/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field public header:Lcom/miui/home/launcher/net/CommonResponseBean$Header;
    .annotation runtime Lcom/mi/google/gson/annotations/SerializedName;
        value = "head"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

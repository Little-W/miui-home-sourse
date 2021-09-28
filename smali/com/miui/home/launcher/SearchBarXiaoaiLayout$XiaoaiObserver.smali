.class Lcom/miui/home/launcher/SearchBarXiaoaiLayout$XiaoaiObserver;
.super Landroid/database/ContentObserver;
.source "SearchBarXiaoaiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarXiaoaiLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XiaoaiObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;Landroid/os/Handler;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$XiaoaiObserver;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    .line 149
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;Landroid/os/Handler;Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$XiaoaiObserver;-><init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$XiaoaiObserver;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->access$300(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V

    return-void
.end method
